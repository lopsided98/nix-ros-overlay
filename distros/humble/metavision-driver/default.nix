
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, event-camera-msgs, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-humble-metavision-driver";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metavision_driver-release/archive/release/humble/metavision_driver/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "b62b8c79e93216ea3db78a616d7a3dfa1e9cd959614dcad201ff9e83b7e61795";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ event-camera-msgs rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''ROS1 and ROS2 drivers for metavision based event cameras'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
