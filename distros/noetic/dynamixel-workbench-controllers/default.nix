
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, eigen, geometry-msgs, roscpp, sensor-msgs, trajectory-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-workbench-controllers";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/dynamixel_workbench_controllers/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "0191c29aaa977c0ec9407d4743da05968a15cc97415f24bb845cc67e237bd6ab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen geometry-msgs roscpp sensor-msgs trajectory-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains examples of applying the 'dynamixel_workbench_toolbox' library developed on the basis of dynamixel_sdk to various operating modes of Dynamixel.'';
    license = with lib.licenses; [ asl20 ];
  };
}
