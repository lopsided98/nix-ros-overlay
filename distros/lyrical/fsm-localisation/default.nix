
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cgal_5, eigen, fftw, fftwFloat, fftwLongDouble, geometry-msgs, launch-testing-ament-cmake, launch-testing-ros, nav-msgs, pkg-config, rclcpp, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-fsm-localisation";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/fourier-scan-matcher/fsm-localisation-release/archive/release/lyrical/fsm_localisation/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "82c47426ede0b221098d2ae35e96c94601168772a615ab0c7085e845cf611da5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ cgal_5 eigen fftw fftwFloat fftwLongDouble geometry-msgs nav-msgs pkg-config rclcpp sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Correspondenceless scan matching of panoramic 2D lidar scans in the frequency domain, in two modes: lidar odometry from consecutive scans, and correction of a pose estimate against an occupancy grid.";
    license = with lib.licenses; [ mit asl20 ];
  };
}
