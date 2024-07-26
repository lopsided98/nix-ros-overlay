
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rclpy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-qb-device-test-controllers";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros2-release/get/release/humble/qb_device_test_controllers/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "3c8cf13161bbb4949641df487f816273935905c2cfa3f5ad088f8323b64d9944";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing qb devices through waypoints.";
    license = with lib.licenses; [ bsd3 asl20 ];
  };
}
