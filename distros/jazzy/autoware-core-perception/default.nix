
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-euclidean-cluster-object-detector, autoware-ground-filter, autoware-lint-common, autoware-perception-objects-converter }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-perception";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_perception/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "0c4df03b2815425afec8e987438a822f7ffd5cd11f8cb016fa37f1f995e6e4cc";
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
