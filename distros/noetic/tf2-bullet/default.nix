
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-bullet";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_bullet/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "94711592f62a495c3b03718f9b9e95947dd2aa42feb99caabbe2449ea9cd94c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bullet geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_bullet";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
