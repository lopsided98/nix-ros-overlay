
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-flask-cors";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/pyros-dev/flask-cors-rosrelease/archive/release/kinetic/flask_cors/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "2735725eb5e55baa6d4bbc719d63dd1898f4c03bcce965488dd8139059fbd285";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  propagatedBuildInputs = [ pythonPackages.flask pythonPackages.six ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cross Origin Resource Sharing ( CORS ) support for Flask'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
