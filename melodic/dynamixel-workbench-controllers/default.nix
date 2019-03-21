
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libyamlcpp, trajectory-msgs, sensor-msgs, catkin, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, eigen, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-controllers";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_controllers/2.0.0-0.tar.gz;
    sha256 = "6a689760da538561f5481b327ee0f0c43fc49f3bc152b3fcfa51b406819ff40f";
  };

  propagatedBuildInputs = [ cmake-modules libyamlcpp trajectory-msgs sensor-msgs dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ cmake-modules libyamlcpp trajectory-msgs sensor-msgs catkin dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen roscpp geometry-msgs ];

  meta = {
    description = ''This package contains examples of applying the 'dynamixel_workbench_toolbox' library developed on the basis of dynamixel_sdk to various operating modes of Dynamixel.'';
    #license = lib.licenses.Apache 2.0;
  };
}
