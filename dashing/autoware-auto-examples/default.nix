
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-autoware-auto-examples";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/autoware_auto_examples/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "096311e4ddaad9bd566a3a03b305d3a0bca9d18ea9358399ea42d8e330d4dd9f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples and configuration files for Autoware.Auto'';
    license = with lib.licenses; [ asl20 ];
  };
}
