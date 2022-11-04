
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, roscpp, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-gazebo";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p_simulations-release/archive/release/melodic/open_manipulator_p_gazebo/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "6f8d8bb0cbbaccba67600029b4c98cc04ddc4fb2e4a524b9cf05bb19f77d5e66";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control roscpp std-msgs urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
