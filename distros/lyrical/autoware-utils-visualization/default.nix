
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, rclcpp, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-utils-visualization";
  version = "1.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/lyrical/autoware_utils_visualization/1.4.2-4.tar.gz";
    name = "1.4.2-4.tar.gz";
    sha256 = "feefef0eceecc800e765d57529684a6250e44f1847b55439b5b47b13bff5f40a";
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
