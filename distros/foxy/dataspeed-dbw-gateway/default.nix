
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dataspeed-dbw-msgs, dbw-fca-msgs, dbw-ford-msgs, dbw-polaris-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-dbw-gateway";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dataspeed_dbw_gateway/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ff03541e4d504e7abfebd355b3dd782fb8ced304dc60e2605c7b0ee39e7af041";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ dataspeed-dbw-common dataspeed-dbw-msgs dbw-fca-msgs dbw-ford-msgs dbw-polaris-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A multiplexer and demultiplexer between common dbw messages and platform specific dbw messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
