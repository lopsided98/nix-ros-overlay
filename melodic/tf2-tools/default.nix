
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, catkin, tf2-ros, tf2 }:
buildRosPackage {
  pname = "ros-melodic-tf2-tools";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_tools/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "c474f792ecac52bec866f11bb705444141ea38f2e9f23fc1513307a4681ef724";
  };

  buildType = "catkin";
  buildInputs = [ tf2 tf2-ros tf2-msgs ];
  propagatedBuildInputs = [ tf2-msgs tf2-ros tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
