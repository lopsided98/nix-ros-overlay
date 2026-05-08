
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, eigen, geometry-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-interpolation";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_interpolation/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "098970a798ea271a646ac3ae6e0f5a99a46d421868110927735e0e23160cc59f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-geometry eigen geometry-msgs tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The spline interpolation package";
    license = with lib.licenses; [ asl20 ];
  };
}
