
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-test, ament-cmake-xmllint, ament-lint-auto, autoware-cmake, autoware-lint-common, pcl-ros, point-cloud-msg-wrapper, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-point-types";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_point_types/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "e0e4f7bb4c93a746c6aa27b20807b47a1d3e6452d23cec8624a2c055667cf707";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common point-cloud-msg-wrapper ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint pcl-ros point-cloud-msg-wrapper sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-test autoware-cmake ];

  meta = {
    description = "The point types definition to use point_cloud_msg_wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
