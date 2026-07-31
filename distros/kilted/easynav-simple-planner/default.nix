
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, nav-msgs, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-easynav-simple-planner";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_simple_planner/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "cf5905c13834788e93bee51cd438ae15fb63e08b0836bdde4cbf570d2323e7f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-simple-common nav-msgs pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Simple planner package.";
    license = with lib.licenses; [ asl20 ];
  };
}
