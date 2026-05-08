
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-downsample-filters, autoware-ekf-localizer, autoware-lint-common, autoware-ndt-scan-matcher, autoware-pose-initializer, autoware-stop-filter, autoware-twist2accel, topic-tools }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-localization";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_localization/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "93c6c3b5be51fa5ebe762191d15f8dc185c0d7f3bd2cce45485a26fcf08c04c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-downsample-filters autoware-ekf-localizer autoware-ndt-scan-matcher autoware-pose-initializer autoware-stop-filter autoware-twist2accel topic-tools ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_localization package";
    license = with lib.licenses; [ asl20 ];
  };
}
