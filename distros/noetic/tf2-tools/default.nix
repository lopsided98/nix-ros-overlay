
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-tools";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_tools/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "23be440a9da54e5602eddf3be795972734c8d74cb1ffdc82d8a226fb23fdb2bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
