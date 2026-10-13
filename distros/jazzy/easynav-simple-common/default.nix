
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, nav-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-common";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_common/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4f8e58606f19c9a98cd82045eac54847333ef43752c74c30fcf52204c69411a1";
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
