
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-downsample-filters, autoware-ekf-localizer, autoware-lint-common, autoware-ndt-scan-matcher, autoware-pose-initializer, autoware-stop-filter, autoware-twist2accel, topic-tools }:
buildRosPackage {
  pname = "ros-humble-autoware-core-localization";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_localization/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "aac4036393b3aa791cfa3646bbf228c6e8ced848e2b5b4621c5947c9358890c9";
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
