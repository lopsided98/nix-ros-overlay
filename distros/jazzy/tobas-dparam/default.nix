
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-dparam-common, tobas-dparam-msgs, tobas-dparam-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "a71c793ad2c46db3405200ca212f754c342d291bd1035afa3f5c7abfcac42ccc";
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
