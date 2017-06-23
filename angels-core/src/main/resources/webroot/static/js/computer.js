/**
 * Created by production on 2017-06-14.
 */
jQuery(function ($) {
    $(window).load(function () {
            update();
    });

    function update(){
        $.ajax({
            type: 'GET',
            url: '/api/resources',
            success: function(res) {
                var data = JSON.parse(res);
                var cpuTotal = 4.0;
                $('#cpuPercentage').val(data.cpu_percentage);

                $('#cpuTotal').text(cpuTotal);
                $('#cpuUsage').text(cpuTotal*data.cpu_percentage/100);

                $('#memoryPercentage').val(data.mem_percentage);
                $('#memoryUsage').text(data.mem_used);
                $('#memoryTotal').text(data.mem_total);

                $('#diskPercentage').val(data.disk_percentage);
                $('#diskTotal').text(data.disk_total);
                $('#diskUsage').text(data.disk_used);

                $(".whiteCircle").trigger('change');
                setTimeout(update, 5000);
            },
            error: function(err) {
                console.log('cannot receive status model.');
            }
        });
    }
});