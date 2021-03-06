<!-- Tomato RAF Transmission GUI Copyright (C) 2007-2011 Shibby http://openlinksys.info
For use with Tomato RAF Firmware only. No part of this file may be used
without permission. -->
<title>
    BitTorrent 客户端
</title>
<content>
    <script type="text/javascript">
        //	<% nvram("bt_enable,bt_binary,bt_binary_custom,bt_custom,bt_port,bt_dir,bt_settings,bt_settings_custom,bt_incomplete,bt_rpc_enable,bt_rpc_wan,bt_auth,bt_login,bt_password,bt_port_gui,bt_dl_enable,bt_dl,bt_ul_enable,bt_ul,bt_peer_limit_global,bt_peer_limit_per_torrent,bt_ul_slot_per_torrent,bt_ratio_enable,bt_ratio,bt_ratio_idle_enable,bt_ratio_idle,bt_dht,bt_pex,bt_lpd,bt_utp,bt_blocklist,bt_blocklist_url,bt_sleep,bt_check,bt_check_time,bt_dl_queue_enable,bt_dl_queue_size,bt_ul_queue_enable,bt_ul_queue_size,bt_message,bt_log,bt_log_path"); %>
        var btgui_link = '&nbsp;&nbsp;<a href="http://' + location.hostname + ':<% nv('bt_port_gui '); %>" target="_blank"><i>[点击这里打开 Transmission GUI页面]</i></a>';

        function verifyFields(focused, quiet) {
            var ok = 1;

            var a = E('_f_bt_enable').checked;
            var c = E('_f_bt_rpc_enable').checked;
            var d = E('_f_bt_dl_enable').checked;
            var e = E('_f_bt_ul_enable').checked;
            var g = E('_f_bt_ratio_enable').checked;
            var h = E('_f_bt_auth').checked;
            var i = E('_f_bt_blocklist').checked;
            var k = E('_f_bt_dl_queue_enable').checked;
            var l = E('_f_bt_ul_queue_enable').checked;
            var m = E('_f_bt_check').checked;
            var n = E('_f_bt_ratio_idle_enable').checked;
            var r = E('_f_bt_log').checked;

            E('_bt_custom').disabled = !a;
            E('_bt_binary').disabled = !a;
            E('_bt_dir').disabled = !a;
            E('_bt_port').disabled = !a;
            E('_bt_sleep').disabled = !a;
            E('_f_bt_incomplete').disabled = !a;
            E('_f_bt_check').disabled = !a;
            E('_bt_check_time').disabled = !a || !m;
            E('_bt_settings').disabled = !a;
            E('_f_bt_rpc_enable').disabled = !a;
            E('_bt_port_gui').disabled = !a || !c;
            E('_f_bt_auth').disabled = !a || !c;
            E('_bt_login').disabled = !a || !c || !h;
            E('_bt_password').disabled = !a || !c | !h;
            E('_f_bt_rpc_wan').disabled = !a || !c || !h;
            E('_f_bt_dl_enable').disabled = !a;
            E('_bt_dl').disabled = !a || !d;
            E('_f_bt_ul_enable').disabled = !a;
            E('_bt_ul').disabled = !a || !e;
            E('_bt_peer_limit_global').disabled = !a;
            E('_bt_peer_limit_per_torrent').disabled = !a;
            E('_bt_ul_slot_per_torrent').disabled = !a;
            E('_f_bt_ratio_enable').disabled = !a;
            E('_bt_ratio').disabled = !a || !g;
            E('_f_bt_ratio_idle_enable').disabled = !a;
            E('_bt_ratio_idle').disabled = !a || !n;
            E('_f_bt_dht').disabled = !a;
            E('_f_bt_pex').disabled = !a;
            E('_f_bt_lpd').disabled = !a;
            E('_f_bt_utp').disabled = !a;
            E('_f_bt_blocklist').disabled = !a;
            E('_bt_blocklist_url').disabled = !a || !i;
            E('_f_bt_dl_queue_enable').disabled = !a;
            E('_bt_dl_queue_size').disabled = !a || !k;
            E('_f_bt_ul_queue_enable').disabled = !a;
            E('_bt_ul_queue_size').disabled = !a || !l;
            E('_bt_message').disabled = !a;
            E('_f_bt_log').disabled = !a;
            E('_bt_log_path').disabled = !a || !r;

            var o = (E('_bt_settings').value == 'custom');
            elem.display('_bt_settings_custom', o && a);

            var p = (E('_bt_binary').value == 'custom');
            elem.display('_bt_binary_custom', p && a);

            if (!v_length('_bt_custom', quiet, 0, 2048)) ok = 0;

            var s = E('_bt_custom');
            if (s.value.search(/"rpc-enable":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"peer-port":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"speed-limit-down-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"speed-limit-up-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"speed-limit-down":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"speed-limit-up":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"rpc-port":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"rpc-whitelist-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"rpc-username":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"rpc-password":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"download-dir":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"incomplete-dir-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"incomplete-dir":/) == 0) {
                ferror.set(s, '无法在此处设置“不完整-目录”选项。 如果启用不完整目录，所有不完整的文件将被下载到“/download_dir/.incomplete”目录。', quiet);
                ok = 0;
            }
            if (s.value.search(/"peer-limit-global":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"peer-limit-per-torrent":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"upload-slots-per-torrent":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"dht-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"pex-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"lpd-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"utp-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"ratio-limit-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"ratio-limit":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"rpc-authentication-required":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"blocklist-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"blocklist-url":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"download-queue-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"download-queue-size":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"seed-queue-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"seed-queue-size":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"idle-seeding-limit-enabled":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"idle-seeding-limit":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }
            if (s.value.search(/"message-level":/) == 0) {
                ferror.set(s, '无法在此处设置任何选项。 您可以在Tomato GUI中设置它', quiet);
                ok = 0;
            }

            return ok;
        }

        function save() {
            if (verifyFields(null, 0) == 0) return;
            var fom = E('_fom');
            fom.bt_enable.value = E('_f_bt_enable').checked ? 1 : 0;
            fom.bt_incomplete.value = E('_f_bt_incomplete').checked ? 1 : 0;
            fom.bt_check.value = E('_f_bt_check').checked ? 1 : 0;
            fom.bt_rpc_enable.value = E('_f_bt_rpc_enable').checked ? 1 : 0;
            fom.bt_auth.value = E('_f_bt_auth').checked ? 1 : 0;
            fom.bt_rpc_wan.value = E('_f_bt_rpc_wan').checked ? 1 : 0;
            fom.bt_dl_enable.value = E('_f_bt_dl_enable').checked ? 1 : 0;
            fom.bt_ul_enable.value = E('_f_bt_ul_enable').checked ? 1 : 0;
            fom.bt_ratio_enable.value = E('_f_bt_ratio_enable').checked ? 1 : 0;
            fom.bt_ratio_idle_enable.value = E('_f_bt_ratio_idle_enable').checked ? 1 : 0;
            fom.bt_dht.value = E('_f_bt_dht').checked ? 1 : 0;
            fom.bt_pex.value = E('_f_bt_pex').checked ? 1 : 0;
            fom.bt_lpd.value = E('_f_bt_lpd').checked ? 1 : 0;
            fom.bt_utp.value = E('_f_bt_utp').checked ? 1 : 0;
            fom.bt_blocklist.value = E('_f_bt_blocklist').checked ? 1 : 0;
            fom.bt_log.value = E('_f_bt_log').checked ? 1 : 0;
            fom.bt_dl_queue_enable.value = E('_f_bt_dl_queue_enable').checked ? 1 : 0;
            fom.bt_ul_queue_enable.value = E('_f_bt_ul_queue_enable').checked ? 1 : 0;

            if (fom.bt_enable.value == 0) {
                fom._service.value = 'bittorrent-stop';
            } else {
                fom._service.value = 'bittorrent-restart';
            }
            form.submit('_fom', 1);
        }

        function init() {}
    </script>
    <form id="_fom" method="post" action="tomato.cgi">
        <input type="hidden" name="_nextpage" value="/#nas-bittorrent.asp">
        <input type="hidden" name="_service" value="bittorrent-restart">
        <input type="hidden" name="bt_enable">
        <input type="hidden" name="bt_incomplete">
        <input type="hidden" name="bt_check">
        <input type="hidden" name="bt_rpc_enable">
        <input type="hidden" name="bt_auth">
        <input type="hidden" name="bt_rpc_wan">
        <input type="hidden" name="bt_dl_enable">
        <input type="hidden" name="bt_ul_enable">
        <input type="hidden" name="bt_blocklist">
        <input type='hidden' name="bt_log">
        <input type="hidden" name="bt_ratio_enable">
        <input type="hidden" name="bt_ratio_idle_enable">
        <input type="hidden" name="bt_dht">
        <input type="hidden" name="bt_pex">
        <input type="hidden" name="bt_lpd">
        <input type="hidden" name="bt_utp">
        <input type="hidden" name="bt_dl_queue_enable">
        <input type="hidden" name="bt_ul_queue_enable">
        <div class="box" data-box="bit-basic-set">
            <div class="heading">
                BitTorrent 客户端 - 基本设置
            </div>
            <div class="content" id="torrent-config-section">
                <div class="clienttable">
                </div>
                <hr>
                <script type="text/javascript">
                    $('.clienttable').forms([{
                        title: '开启BT客户端',
                        name: 'f_bt_enable',
                        type: 'checkbox',
                        value: nvram.bt_enable == '1',
                        suffix: ' <small>*</small>'
                    },
                    {
                        title: '系统目录',
                        multi: [{
                            name: 'bt_binary',
                            type: 'select',
                            options: [
                            /* BBT-BEGIN */
                            ['internal', '内部 (/usr/bin)'],
                            /* BBT-END */
                            ['optware', 'Optware (/opt/bin)'], ['custom', '自定义']],
                            value: nvram.bt_binary,
                            suffix: ' <small>*</small> '
                        },
                        {
                            name: 'bt_binary_custom',
                            type: 'text',
                            maxlen: 40,
                            size: 40,
                            value: nvram.bt_binary_custom
                        }]
                    },
                    {
                        title: '进程守护',
                        name: 'f_bt_check',
                        type: 'checkbox',
                        value: nvram.bt_check == '1',
                        suffix: ' <small>*</small>'
                    },
                    {
                        title: '进程守护间隔',
                        indent: 2,
                        name: 'bt_check_time',
                        type: 'text',
                        maxlen: 5,
                        size: 7,
                        value: nvram.bt_check_time,
                        suffix: ' <small>分钟 (范围: 1 - 55; 默认: 15)</small>'
                    },
                    {
                        title: '启动延迟',
                        name: 'bt_sleep',
                        type: 'text',
                        maxlen: 5,
                        size: 7,
                        value: nvram.bt_sleep,
                        suffix: ' <small>秒 (范围: 1 - 60; 默认: 10)</small>'
                    },
                    {
                        title: '监听端口',
                        name: 'bt_port',
                        type: 'text',
                        maxlen: 5,
                        size: 7,
                        value: nvram.bt_port,
                        suffix: ' <small>*</small>'
                    },
                    {
                        title: '下载目录',
                        name: 'bt_dir',
                        type: 'text',
                        maxlen: 40,
                        size: 40,
                        value: nvram.bt_dir
                    },
                    {
                        title: '使用 .incomplete/ 不完整目录',
                        indent: 2,
                        name: 'f_bt_incomplete',
                        type: 'checkbox',
                        value: nvram.bt_incomplete == '1'
                    }]);
                </script>
                <h4>
                    说明
                </h4>
                <ul>
                    <li>
                        <b>
                            启用BT客户端
                        </b>
                        - 警告！ - 如果你的路由器只有32MB的RAM，你必须使用交换。
                        <li>
                            <b>
                                系统目录
                            </b>
                            包含进程守护等文件的目录的路径。
                            <li>
                                <b>
                                    进程守护
                                </b>
                                - 如果启用，将以指定的间隔检查BT进程，并在崩溃后重新启动。
                                <li>
                                    <b>
                                        监听端口
                                    </b>
                                    - 用于torrent客户端的端口。 确保此端口未使用。
                </ul>
            </div>
        </div>
        <div class="box" data-box="bit-remote">
            <div class="heading">
                远程访问
                <span class="bt-link">
                </span>
            </div>
            <div class="content">
                <div class="remoteacc">
                </div>
                <hr>
                <script type="text/javascript">
                    $('.remoteacc').forms([{
                        title: '启用GUI界面',
                        name: 'f_bt_rpc_enable',
                        type: 'checkbox',
                        value: nvram.bt_rpc_enable == '1'
                    },
                    {
                        title: '监听GUI端口',
                        indent: 2,
                        name: 'bt_port_gui',
                        type: 'text',
                        maxlen: 32,
                        size: 5,
                        value: nvram.bt_port_gui,
                        suffix: ' <small>*</small>'
                    },
                    {
                        title: '需要验证',
                        name: 'f_bt_auth',
                        type: 'checkbox',
                        value: nvram.bt_auth == '1',
                        suffix: ' <small>*</small>'
                    },
                    {
                        title: '用户名',
                        indent: 2,
                        name: 'bt_login',
                        type: 'text',
                        maxlen: 32,
                        size: 15,
                        value: nvram.bt_login
                    },
                    {
                        title: '密码',
                        indent: 2,
                        name: 'bt_password',
                        type: 'password',
                        maxlen: 32,
                        size: 15,
                        value: nvram.bt_password
                    },
                    {
                        title: '允许远程访问',
                        name: 'f_bt_rpc_wan',
                        type: 'checkbox',
                        value: nvram.bt_rpc_wan == '1',
                        suffix: ' <small>*</small>'
                    }]);
                </script>
                <h4>
                    说明
                </h4>
                <ul>
                    <li>
                        <b>
                            监听GUI端口
                        </b>
                        - 用于传输GUI的端口。 确保此端口未使用。
                        <li>
                            <b>
                                需要验证
                            </b>
                            - 验证是
                            <b>
                                <i>
                                    强烈推荐
                                </i>
                            </b>
                            。
                            <li>
                                <b>
                                    允许远程访问
                                </b>
                                - 此选项将从WAN侧打开传输GUI端口，并允许从Internet访问GUI。
                </ul>
            </div>
        </div>
        <div class="box" data-box="bit-limits">
            <div class="heading">
                限制
            </div>
            <div class="content">
                <div class="limitsgui">
                </div>
                <script type="text/javascript">
                    $('.limitsgui').forms([{
                        title: '下载限速',
                        multi: [{
                            name: 'f_bt_dl_enable',
                            type: 'checkbox',
                            value: nvram.bt_dl_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_dl',
                            type: 'text',
                            maxlen: 10,
                            size: 7,
                            value: nvram.bt_dl,
                            suffix: ' <small>kB/s</small>'
                        }]
                    },
                    {
                        title: '上传限速',
                        multi: [{
                            name: 'f_bt_ul_enable',
                            type: 'checkbox',
                            value: nvram.bt_ul_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_ul',
                            type: 'text',
                            maxlen: 10,
                            size: 7,
                            value: nvram.bt_ul,
                            suffix: ' <small>kB/s</small>'
                        }]
                    },
                    {
                        title: '停止做种',
                        multi: [{
                            name: 'f_bt_ratio_enable',
                            type: 'checkbox',
                            value: nvram.bt_ratio_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_ratio',
                            type: 'select',
                            options: [['0.0000', '0.0'], ['0.1000', '0.1'], ['0.2000', '0.2'], ['0.5000', '0.5'], ['1.0000', '1.0'], ['1.5000', '1.5'], ['2.0000', '2.0'], ['2.5000', '2.5'], ['3.0000', '3.0']],
                            value: nvram.bt_ratio,
                            suffix: '%'
                        }]
                    },
                    {
                        title: '持续做种',
                        multi: [{
                            name: 'f_bt_ratio_idle_enable',
                            type: 'checkbox',
                            value: nvram.bt_ratio_idle_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_ratio_idle',
                            type: 'text',
                            maxlen: 10,
                            size: 7,
                            value: nvram.bt_ratio_idle,
                            suffix: ' <small>分钟 (范围: 1 - 55; 默认: 30)</small>'
                        }]
                    },
                    {
                        title: '全局连接数',
                        name: 'bt_peer_limit_global',
                        type: 'text',
                        maxlen: 10,
                        size: 7,
                        value: nvram.bt_peer_limit_global,
                        suffix: ' <small>(范围: 10 - 1000; 默认: 150)</small>'
                    },
                    {
                        title: '单种连接数',
                        name: 'bt_peer_limit_per_torrent',
                        type: 'text',
                        maxlen: 10,
                        size: 7,
                        value: nvram.bt_peer_limit_per_torrent,
                        suffix: ' <small>(范围: 1 - 200; 默认: 30)</small>'
                    },
                    {
                        title: '上传连接数',
                        name: 'bt_ul_slot_per_torrent',
                        type: 'text',
                        maxlen: 10,
                        size: 7,
                        value: nvram.bt_ul_slot_per_torrent,
                        suffix: ' <small>(范围: 1 - 50; 默认: 10)</small>'
                    }]);
                </script>
            </div>
        </div>
        <div class="box" data-box="bit-queue">
            <div class="heading">
                BT队列设置
            </div>
            <div class="content">
                <div class="queuetor">
                </div>
                <hr>
                <script type="text/javascript">
                    $('.queuetor').forms([{
                        title: '同时下载任务数',
                        multi: [{
                            name: 'f_bt_dl_queue_enable',
                            type: 'checkbox',
                            value: nvram.bt_dl_queue_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_dl_queue_size',
                            type: 'text',
                            maxlen: 5,
                            size: 7,
                            value: nvram.bt_dl_queue_size,
                            suffix: ' <small>(范围: 1 - 30; 摸: 5) *</small>'
                        }]
                    },
                    {
                        title: '同时上传任务数',
                        multi: [{
                            name: 'f_bt_ul_queue_enable',
                            type: 'checkbox',
                            value: nvram.bt_ul_queue_enable == '1',
                            suffix: '  '
                        },
                        {
                            name: 'bt_ul_queue_size',
                            type: 'text',
                            maxlen: 5,
                            size: 7,
                            value: nvram.bt_ul_queue_size,
                            suffix: ' <small>(范围: 1 - 30; 默认: 5) *</small>'
                        }]
                    }]);
                </script>
                <h4>
                    说明
                </h4>
                <ul>
                    <li>
                        <b>
                            同时下载任务数
                        </b>
                        - 如果启用，此选项将限制同时下载多少个文件。
                        <li>
                            <b>
                                同时上传任务数
                            </b>
                            - 如果启用，此选项将限制同时上传多少个文件。
                </ul>
            </div>
        </div>
        <div class="box" data-box="bit-advanced">
            <div class="heading">
                高级设置
            </div>
            <div class="content" id="tor-advancedsettings">
            </div>
            <script type="text/javascript">
                $('#tor-advancedsettings').forms([{
                    title: '查询更多可用资源',
                    multi: [{
                        suffix: '启用DHT网络',
                        name: 'f_bt_dht',
                        type: 'checkbox',
                        value: nvram.bt_dht == '1'
                    },
                    {
                        suffix: '启用PEX网络',
                        name: 'f_bt_pex',
                        type: 'checkbox',
                        value: nvram.bt_pex == '1'
                    },
                    {
                        suffix: '启用LPD网络',
                        name: 'f_bt_lpd',
                        type: 'checkbox',
                        value: nvram.bt_lpd == '1'
                    },
                    {
                        suffix: '启用uTP网络',
                        name: 'f_bt_utp',
                        type: 'checkbox',
                        value: nvram.bt_utp == '1'
                    }]
                },
                {
                    title: '消息级别',
                    name: 'bt_message',
                    type: 'select',
                    options: [['0', '无'], ['1', '错误'], ['2', '信息'], ['3', '调试']],
                    value: nvram.bt_message,
                    suffix: ' '
                },
                {
                    title: '保存设置位置',
                    multi: [{
                        name: 'bt_settings',
                        type: 'select',
                        options: [['down_dir', '下载目录（推荐）'],
                        /* JFFS2-BEGIN */
                        ['/jffs', 'JFFS分区'],
                        /* JFFS2-END */
                        /* CIFS-BEGIN */
                        ['/cifs1', 'CIFS 1分区'], ['/cifs2', 'CIFS 2分区'],
                        /* CIFS-END */
                        ['/tmp', '内存 (临时)'], ['custom', '自定义']],
                        value: nvram.bt_settings,
                        suffix: ' '
                    },
                    {
                        name: 'bt_settings_custom',
                        type: 'text',
                        maxlen: 60,
                        size: 40,
                        value: nvram.bt_settings_custom
                    }]
                },
                {
                    title: '黑名单',
                    multi: [{
                        name: 'f_bt_blocklist',
                        type: 'checkbox',
                        value: nvram.bt_blocklist == '1',
                        suffix: '  '
                    },
                    {
                        name: 'bt_blocklist_url',
                        type: 'text',
                        maxlen: 80,
                        size: 60,
                        value: nvram.bt_blocklist_url
                    }]
                },
                {
                    title: '自定义日志文件路径',
                    multi: [{
                        name: 'f_bt_log',
                        type: 'checkbox',
                        value: nvram.bt_log == '1',
                        suffix: '  '
                    },
                    {
                        name: 'bt_log_path',
                        type: 'text',
                        maxlen: 80,
                        size: 60,
                        value: nvram.bt_log_path,
                        suffix: ' /transmission.log'
                    }]
                },
                null, {
                    title: '<a href="https://trac.transmissionbt.com/wiki/EditConfigFiles" target="_new">Transmission</a><br>自定义设置',
                    name: 'bt_custom',
                    type: 'textarea',
                    value: nvram.bt_custom
                }]);
            </script>
        </div>
        <button type="button" value="Save" id="save-button" onclick="save()" class="btn btn-primary">
            保存
            <i class="icon-check">
            </i>
        </button>
        <button type="button" value="Cancel" id="cancel-button" onclick="javascript:reloadPage();"
        class="btn">
            取消
            <i class="icon-cancel">
            </i>
        </button>
        <span id="footer-msg" class="alert alert-warning" style="visibility: hidden;">
        </span>
    </form>
    <script type="text/javascript">
        init();
        verifyFields(null, 1);
    </script>
</content>