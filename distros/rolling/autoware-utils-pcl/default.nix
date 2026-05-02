
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-tf, pcl-conversions, pcl-ros }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-pcl";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_pcl/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "59e7222469dea5311ed7b1924eed8c510a55a8e9b3e70e7d062ac5c0eb0dd80e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-tf pcl-conversions pcl-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_pcl package";
    license = with lib.licenses; [ asl20 ];
  };
}
