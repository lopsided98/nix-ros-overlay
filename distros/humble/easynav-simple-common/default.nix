
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, nav-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-simple-common";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/humble/easynav_simple_common/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "d0684a7fd7b7449c20faf2c5b5f5125e2cf428025b7df40d4c170f29b697d369";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
