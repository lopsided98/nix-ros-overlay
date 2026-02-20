
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, eigen, geometry-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-interpolation";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_interpolation/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "124a7a01ef3723e47d133baaf461b3dc7940fbc74a27c2806995d0c632ef6eba";
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
