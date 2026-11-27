
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, cmake, eigen, nlohmann_json, rmf-battery, rmf-traffic, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-task";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_task-release/archive/release/rolling/rmf_task/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "91d59204889d652610668904c3fffc05205d279e33d9859334bd603d36626659";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ];
  propagatedBuildInputs = [ eigen nlohmann_json rmf-battery rmf-traffic rmf-utils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Package for managing tasks in the Robotics Middleware Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
