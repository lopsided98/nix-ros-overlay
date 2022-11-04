
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-vda5050-msgs";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/inorbit-ai/ros_amr_interop-release/archive/release/galactic/vda5050_msgs/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "1b35da71df6e39d0a445cbf140970b572ef9d4433f981e6e4c55c659f4cb1db6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The vda5050_msgs package contains the datatypes (json objects) specified by the VDA
    &quot;Arbeitskreis Schlüsseltechnologien&quot; in their recommondation &quot;VDA 5050 - Schnittstelle zur Kommunikation zwischen
    Fahrerlosen Transportfahrzeugen (FTF) und einer Leitsteuerung.
    This package provides the message files which can be used to be (de-)serialized with an implementation of mqtt
    (e.g mqtt_bridge) or to plain json (rospy_message_converter) or similar.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
