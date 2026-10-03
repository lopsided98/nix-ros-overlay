
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mrpt-containers, mrpt-obs, mrpt-poses }:
buildRosPackage {
  pname = "ros-jazzy-mola-imu-preintegration";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_imu_preintegration-release/archive/release/jazzy/mola_imu_preintegration/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "142573e7160c9819c9820dd812c5c91b4df55341f1783f984dbc46c37b13d28a";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mrpt-containers mrpt-obs mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Integrator of IMU angular velocity readings";
    license = with lib.licenses; [ gpl3Only ];
  };
}
