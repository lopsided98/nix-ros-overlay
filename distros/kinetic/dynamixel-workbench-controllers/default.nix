
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamixel-workbench-msgs, dynamixel-workbench-toolbox, eigen, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-controllers";
  version = "2.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_controllers/2.2.0-0.tar.gz";
    name = "2.2.0-0.tar.gz";
    sha256 = "c8ddcc9585858459f9b0846c0d312c6c7b4309f5a8d098bd60d0bd5a24a17ed2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamixel-workbench-msgs dynamixel-workbench-toolbox eigen geometry-msgs libyamlcpp roscpp sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains examples of applying the 'dynamixel_workbench_toolbox' library developed on the basis of dynamixel_sdk to various operating modes of Dynamixel.'';
    license = with lib.licenses; [ asl20 ];
  };
}
