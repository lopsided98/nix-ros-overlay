
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, opencv, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-geometry";
  version = "0.0.7-r2";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_geometry-release/archive/release/rolling/tuw_geometry/0.0.7-2.tar.gz";
    name = "0.0.7-2.tar.gz";
    sha256 = "de41212d3c5d7b39a51e69098aaff89793edf155ba35d104f5fa23dc5031ad16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
