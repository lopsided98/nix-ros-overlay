
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-downsample-filters, autoware-ekf-localizer, autoware-lint-common, autoware-ndt-scan-matcher, autoware-pose-initializer, autoware-stop-filter, autoware-twist2accel }:
buildRosPackage {
  pname = "ros-humble-autoware-core-localization";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_localization/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "554216665cc0dd8a0e9cd14e2dc22b3c9419dafad3b323ebf6b63895664c5c3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-downsample-filters autoware-ekf-localizer autoware-ndt-scan-matcher autoware-pose-initializer autoware-stop-filter autoware-twist2accel ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_localization package";
    license = with lib.licenses; [ asl20 ];
  };
}
