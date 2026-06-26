
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-updater }:
buildRosPackage {
  pname = "ros-humble-omni-base-rgbd-sensors";
  version = "2.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_navigation-release/archive/release/humble/omni_base_rgbd_sensors/2.22.1-1.tar.gz";
    name = "2.22.1-1.tar.gz";
    sha256 = "5cb5fd6234b28b27316f8c7bd01e68317461c2469b48252437542e4dcbd93208";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-updater ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "omni_base-specific RGBD sensors module and params files.";
    license = with lib.licenses; [ asl20 ];
  };
}
