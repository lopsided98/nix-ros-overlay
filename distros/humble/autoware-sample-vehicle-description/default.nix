
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-sample-vehicle-description";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_sample_vehicle_description/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f20913567897076fc3185859fecc0f4717d06ea5cd95be70fccf4ec84bf15a43";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_sample_vehicle_description package";
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
