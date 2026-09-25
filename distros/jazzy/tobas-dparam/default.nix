
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-dparam-common, tobas-dparam-msgs, tobas-dparam-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "a5661303c93b05e5e8097fedb8d20c6b034d0455383a960a9128b17d08b9bfd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-client tobas-dparam-common tobas-dparam-msgs tobas-dparam-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas distributed dynamic parameter services.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
