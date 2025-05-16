
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl }:
buildRosPackage {
  pname = "ros-noetic-kdl-conversions";
  version = "1.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry-release/archive/release/noetic/kdl_conversions/1.13.4-1.tar.gz";
    name = "1.13.4-1.tar.gz";
    sha256 = "662238210df85816e8b831ba8212525726e8930bb0b2b7be855a13ce225b5516";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Conversion functions between KDL and geometry_msgs types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
