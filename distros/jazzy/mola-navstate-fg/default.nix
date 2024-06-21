
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtsam, mola-common, mola-imu-preintegration, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-jazzy-mola-navstate-fg";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_navstate_fg/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "0f3698501337caa97ef187d61aa425d4e41e09ddc26b7bc4d4a25ba69b605770";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake gtsam ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
