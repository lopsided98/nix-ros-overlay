
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto, autoware-auto-cmake, eigen, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-motion-model";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/motion_model/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "bd55b4808c595bde055e11e72bbab4936738a1bdf312d073a2d55cfc37a06ec9";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ autoware-auto-cmake ament-cmake ];

  meta = {
    description = ''implementation of motion models for prediction'';
    license = with lib.licenses; [ asl20 ];
  };
}
