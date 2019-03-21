
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libyamlcpp, trajectory-msgs, sensor-msgs, catkin, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-controllers";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_controllers/2.0.0-0.tar.gz;
    sha256 = "ef893c3483c8ca773e64a6e83b27b670a5adbe0d1f27a61d295b328202ce2807";
  };

  propagatedBuildInputs = [ cmake-modules libyamlcpp trajectory-msgs sensor-msgs dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ cmake-modules libyamlcpp trajectory-msgs sensor-msgs catkin dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen roscpp geometry-msgs ];

  meta = {
    description = ''This package contains examples of applying the 'dynamixel_workbench_toolbox' library developed on the basis of dynamixel_sdk to various operating modes of Dynamixel.'';
    #license = lib.licenses.Apache 2.0;
  };
}
