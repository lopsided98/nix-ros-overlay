
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-visualization";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_visualization/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "70570065981513e75c9c98382769f75dd3f832f248a4412d900bbf09c0d2053b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ rclcpp visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_visualization package";
    license = with lib.licenses; [ asl20 ];
  };
}
