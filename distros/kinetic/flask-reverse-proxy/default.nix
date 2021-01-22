
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip }:
buildRosPackage {
  pname = "ros-kinetic-flask-reverse-proxy";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/pyros-dev/flask-reverse-proxy-rosrelease/archive/release/kinetic/flask_reverse_proxy/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "c3f4fb621008261448d9396b6b2ac22a5fe02fd8c20adc5d1f83e3e7a09a5bc4";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Flask &quot;extension&quot; for applications in a reverse proxy not at the root. A complete rip off of http://flask.pocoo.org/snippets/35/.'';
    license = with lib.licenses; [ mit ];
  };
}
