
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, easynav-common, nav-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-costmap-common";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_costmap_common/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8ed05fec5e64e46424bb002b5d7bbf958535635b35e8633cb41560ac23f374c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp easynav-common nav-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple Common package.";
    license = with lib.licenses; [ asl20 ];
  };
}
