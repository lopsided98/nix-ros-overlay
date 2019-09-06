
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, roscpp, tf2-ros, tf2, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-utility";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_utility/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "e44cea650cfcec0ebe9255c1d9493b464998c707d7e9be69450cb219528f53e6";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs roscpp tf2-ros tf2 tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_utility package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
