
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, backward-ros, controller-interface, controller-manager-msgs, diagnostic-updater, example-interfaces, generate-parameter-library, hardware-interface, hardware-interface-testing, launch, launch-ros, libstatistics-collector, pluginlib, python3Packages, rclcpp, rcpputils, realtime-tools, ros2-control-test-assets, ros2param, ros2run, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager";
  version = "4.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager/4.22.0-1.tar.gz";
    name = "4.22.0-1.tar.gz";
    sha256 = "3bfe7bebc148039819eb8189b9f48cb6844240ab4ae6bcbf5a655f145ef280d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-pytest example-interfaces hardware-interface-testing python3Packages.coverage ros2-control-test-assets ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros controller-interface controller-manager-msgs diagnostic-updater generate-parameter-library hardware-interface launch launch-ros libstatistics-collector pluginlib rclcpp rcpputils realtime-tools ros2-control-test-assets ros2param ros2run std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ament-cmake-python ];

  meta = {
    description = "Description of controller_manager";
    license = with lib.licenses; [ asl20 ];
  };
}
