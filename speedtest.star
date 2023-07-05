load("render.star", "render")
load("humanize.star", "humanize")
load("pixlib/file.star", "file")

def main(config):
    results = file.exec("run.py")

    return render.Root(
        child=render.Column(
            expanded=True,
            main_align="space_around",
            cross_align="center",
            children=[
                render.Text(results["client"]["isp"], font="Dina_r400-6"),
                render.Text("Down: " + humanize.bytes(int(results["download"])).replace("B", "bps")),
                render.Text("Up: " + humanize.bytes(int(results["upload"])).replace("B", "bps"))
            ]
        )
    )
