
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, nav-msgs, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-easynav-simple-planner";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_simple_planner/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "be457d947364d4291ac10d47b24fdcc2397e43b9149107d9dd1c43a3789fb5e4";
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
