
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geometry-msgs, nav-msgs, rclcpp, rclcpp-lifecycle, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2z-planners-common";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/nav2z_planners_common/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "32d1b17942fff527d7677e6de4612b208ca0a820a11418d4da68c2908eecf454";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles geometry-msgs nav-msgs rclcpp rclcpp-lifecycle tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The nav2z_planners_common package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
