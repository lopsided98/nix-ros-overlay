
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lanelet2-map-visualizer, autoware-lint-common, autoware-map-loader, autoware-map-projection-loader }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-map";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_map/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "78f70f05ec61c27979f70b8e50ee92b638f80f39c70a834bf779010a565868f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-map-visualizer autoware-map-loader autoware-map-projection-loader ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_map package";
    license = with lib.licenses; [ asl20 ];
  };
}
