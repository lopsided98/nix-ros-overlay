
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, lifecycle, lifecycle-msgs, rclpy, ros-testing, std-msgs }:
buildRosPackage {
  pname = "ros-humble-lifecycle-py";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/lifecycle_py/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "0d9ab61e94a6a6218e2759d9522f47f16707eabd842440889d3cff5a05756191";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common lifecycle ros-testing ];
  propagatedBuildInputs = [ lifecycle-msgs rclpy std-msgs ];

  meta = {
    description = ''Package containing demos for rclpy lifecycle implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
