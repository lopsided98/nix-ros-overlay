
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-euclidean-cluster-object-detector, autoware-ground-filter, autoware-lint-common, autoware-perception-objects-converter }:
buildRosPackage {
  pname = "ros-humble-autoware-core-perception";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_perception/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "8235cdceb8a8ac384fdf418d6546cc84256605abbbde7d748f40008920bd4c94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-euclidean-cluster-object-detector autoware-ground-filter autoware-perception-objects-converter ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_perception package";
    license = with lib.licenses; [ asl20 ];
  };
}
