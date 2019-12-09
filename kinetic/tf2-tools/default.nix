
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, catkin, tf2-ros, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-tf2-tools";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_tools/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "e864250cde2e5c28ebf296336a77a1fd44c97c8ea945b1b08e769841bde06b8d";
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
