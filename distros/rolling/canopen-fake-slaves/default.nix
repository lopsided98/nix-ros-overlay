
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, lely-core-libraries, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-canopen-fake-slaves";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_fake_slaves/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "78f10e79ae29f10498ce7ae9fa01f1199546f76019cddcc681fb42e156b8355e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ lely-core-libraries lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package with mock canopen slave'';
    license = with lib.licenses; [ asl20 ];
  };
}
