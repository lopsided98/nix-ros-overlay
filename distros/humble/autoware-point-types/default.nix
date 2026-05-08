
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-test, ament-cmake-xmllint, ament-lint-auto, autoware-cmake, autoware-lint-common, pcl-ros, point-cloud-msg-wrapper }:
buildRosPackage {
  pname = "ros-humble-autoware-point-types";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_point_types/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "3a59f07cbd9eeca0925f2c00991cad644a22213cc345e4eded68ff34581cded4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common point-cloud-msg-wrapper ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint pcl-ros point-cloud-msg-wrapper ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-test autoware-cmake ];

  meta = {
    description = "The point types definition to use point_cloud_msg_wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
