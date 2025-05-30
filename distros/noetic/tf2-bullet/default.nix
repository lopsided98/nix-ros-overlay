
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bullet, catkin, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-bullet";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_bullet/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "79a1ab4d8eb5cec3c9fbb46c113ff50083581ee1306bcfbc0201aaf1c3cde68e";
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
