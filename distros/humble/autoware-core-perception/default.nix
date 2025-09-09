
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-euclidean-cluster-object-detector, autoware-ground-filter, autoware-lint-common, autoware-perception-objects-converter }:
buildRosPackage {
  pname = "ros-humble-autoware-core-perception";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_perception/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "17b3187af927fd11f9963c362f1a81f8b68320d23dd0ad62f100ba5890ce9b9d";
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
