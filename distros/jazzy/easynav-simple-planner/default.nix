
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, nav-msgs, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-planner";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_planner/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ceef1e1063142a4a8f39b2470cb734e42c6944bac5711f6a3a40bd3541fa4cc1";
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
