
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-tf, pcl-conversions, pcl-ros }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-pcl";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_pcl/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "413dca03addacfed99e0d90ad5d4344da35bfe55e8612e0ea12aeaa8f3c7fe30";
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
