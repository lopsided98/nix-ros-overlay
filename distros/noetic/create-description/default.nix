
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-create-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/create_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "21c35dcf47f0a37aa957b54d0ee9cd7f234e6ec1bb95be3a7b19eae38fa8c687";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot URDF descriptions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
