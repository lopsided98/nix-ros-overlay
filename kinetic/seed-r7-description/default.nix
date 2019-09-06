
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-description";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_description/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "7186ff450f0ed203a267ec7956b35275405f192eb58e1c839245a250326d963b";
  };

  buildType = "catkin";
  buildInputs = [ xacro ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
