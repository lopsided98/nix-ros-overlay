
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, nav2-lifecycle-manager, nav2-map-server, rclcpp-components, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-nav2-demos";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/jazzy/clearpath_nav2_demos/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "bea51d6c655ea863c1be5e202ef2391c59b4697ac5cc4ab9ebda1c32592427da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config nav2-bringup nav2-lifecycle-manager nav2-map-server rclcpp-components slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 demos for Clearpath robots";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
