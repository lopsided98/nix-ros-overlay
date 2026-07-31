
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-downsample-filters, autoware-ekf-localizer, autoware-lint-common, autoware-ndt-scan-matcher, autoware-pose-initializer, autoware-stop-filter, autoware-twist2accel, topic-tools }:
buildRosPackage {
  pname = "ros-humble-autoware-core-localization";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_localization/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "724e74bb27aa6c93a7fc0095d2641b3279f090b336b64e75c62c09cca1dbecff";
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
