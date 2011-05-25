include fmodex/fmod
include fmodex/fmod_memoryinfo
include fmodex/fmod_dsp

Init : class {
    normal : extern(FMOD_INIT_NORMAL) static Int
    stream_from_update : extern(FMOD_INIT_STREAM_FROM_UPDATE) static const Int
    _3D_righthanded : extern(FMOD_INIT_3D_RIGHTHANDED) static const Int
    software_disable : extern(FMOD_INIT_SOFTWARE_DISABLE) static const Int
    software_occlusion : extern(FMOD_INIT_SOFTWARE_OCCLUSION) static const Int
    software_hrtf : extern(FMOD_INIT_SOFTWARE_HRTF) static const Int
    software_reverb_lowmem : extern(FMOD_INIT_SOFTWARE_REVERB_LOWMEM) static const Int
    enable_profile : extern(FMOD_INIT_ENABLE_PROFILE) static const Int
    vol0_becomes_virtual : extern(FMOD_INIT_VOL0_BECOMES_VIRTUAL) static const Int
    wasapi_exclusive : extern(FMOD_INIT_WASAPI_EXCLUSIVE) static const Int
    ps2_disablecore0reverb : extern(FMOD_INIT_PS2_DISABLECORE0REVERB) static const Int
    ps2_disablecore1reverb : extern(FMOD_INIT_PS2_DISABLECORE1REVERB) static const Int
    ps2_dontusescratchpad : extern(FMOD_INIT_PS2_DONTUSESCRATCHPAD) static const Int
    ps2_swapdmachannels : extern(FMOD_INIT_PS2_SWAPDMACHANNELS) static const Int
    ps3_preferdts : extern(FMOD_INIT_PS3_PREFERDTS) static const Int
    ps3_force2chlpcm : extern(FMOD_INIT_PS3_FORCE2CHLPCM) static const Int
    disabledolby : extern(FMOD_INIT_DISABLEDOLBY) static const Int
    system_musicmutenotpause : extern(FMOD_INIT_SYSTEM_MUSICMUTENOTPAUSE) static const Int
    syncmixerwithupdate : extern(FMOD_INIT_SYNCMIXERWITHUPDATE) static const Int
    dts_neuralsurround : extern(FMOD_INIT_DTS_NEURALSURROUND) static const Int
    geometry_useclosest : extern(FMOD_INIT_GEOMETRY_USECLOSEST) static const Int
    disable_myears : extern(FMOD_INIT_DISABLE_MYEARS) static const Int
}

Result : enum {
    ok,
    err_alreadylocked,
    err_badcommand,
    err_cdda_drivers,
    err_cdda_init,
    err_cdda_invalid_device,
    err_cdda_noaudio,
    err_cdda_nodevices,
    err_cdda_nodisc,
    err_cdda_read,
    err_channel_alloc,
    err_channel_stolen,
    err_com,
    err_dma,
    err_dsp_connection,
    err_dsp_format,
    err_dsp_notfound,
    err_dsp_running,
    err_dsp_toomanyconnections,
    err_file_bad,
    err_file_couldnotseek,
    err_file_diskejected,
    err_file_eof,
    err_file_notfound,
    err_file_unwanted,
    err_format,
    err_http,
    err_http_access,
    err_http_proxy_auth,
    err_http_server_error,
    err_http_timeout,
    err_initialization,
    err_initialized,
    err_internal,
    err_invalid_address,
    err_invalid_float,
    err_invalid_handle,
    err_invalid_param,
    err_invalid_position,
    err_invalid_speaker,
    err_invalid_syncpoint,
    err_invalid_vector,
    err_irx,
    err_maxaudible,
    err_memory,
    err_memory_cantpoint,
    err_memory_iop,
    err_memory_sram,
    err_needs2D,
    err_needs3D,
    err_needshardware,
    err_needssoftware,
    err_net_connect,
    err_net_socket_errorm,
    err_net_url,
    err_net_would_block,
    err_notready,
    err_output_allocated,
    err_output_createbuffer,
    err_output_enumeration,
    err_output_format,
    err_output_init,
    err_output_nosoftware,
    err_pan,
    err_plugin,
    err_plugin_instances,
    err_plugin_missing,
    err_plugin_resource,
    err_preloaded,
    err_programmersound,
    err_record,
    err_reverb_instance,
    err_subsound_allocated,
    err_subsound_cantmove,
    err_subsound_mode,
    err_subsounds,
    err_tagnotfound,
    err_toomanychannels,
    err_unimplemented,
    err_uninitialized,
    err_unsupported,
    err_update,
    err_version,
    err_event_failed,
    err_event_infoonly,
    err_event_internal,
    err_event_maxstreams,
    err_event_mismatch,
    err_event_nameconflict,
    err_event_notfound,
    err_event_needssimple,
    err_event_guidconflict,
    err_event_already_loaded,
    err_music_uninitialized,
    err_music_notfound,
    err_music_nocallback,
    result_forceint = 65536
}

Vector : cover from FMOD_VECTOR* {
    x : extern Float
    y : extern Float
    z : extern Float
}

Guid : cover from FMOD_GUID* {
    data1 : extern(Data1) UInt
    data2 : extern(Data2) UInt
    data3 : extern(Data3) UInt
    data4 : extern(Data4) UChar[]
}

AsyncReadInfo : cover from FMOD_ASYNCREADINFO* {
    handle : extern Pointer
    offset : extern UInt
    sizebytes : extern UInt
    priority : extern Int
    buffer : extern Pointer
    bytesread : extern UInt
    result : extern Int
    userdata : extern Pointer
}

OutputType : enum {
    autodetect,
    unknown,
    nosound,
    wavwriter,
    nosound_nrt,
    wavwriter_nrt,
    dsound,
    winmm,
    wasapi,
    asio,
    oss,
    alsa,
    esd,
    pulseaudio,
    coreaudio,
    ps2,
    ps3,
    xbox360,
    psp,
    wii,
    android,
    _3ds,
    max,
    forceint = 65536
}

Caps : class {
    none : extern(FMOD_CAPS_NONE) static const Int
    hardware : extern(FMOD_CAPS_HARDWARE) static const Int
    hardware_emulated : extern(FMOD_CAPS_HARDWARE_EMULATED) static const Int
    output_multichannel : extern(FMOD_CAPS_OUTPUT_MULTICHANNEL) static const Int
    output_format_pcm8 : extern(FMOD_CAPS_OUTPUT_FORMAT_PCM8) static const Int
    output_format_pcm16 : extern(FMOD_CAPS_OUTPUT_FORMAT_PCM16) static const Int
    output_format_pcm24 : extern(FMOD_CAPS_OUTPUT_FORMAT_PCM24) static const Int
    output_format_pcm32 : extern(FMOD_CAPS_OUTPUT_FORMAT_PCM32) static const Int
    output_format_pcmfloat : extern(FMOD_CAPS_OUTPUT_FORMAT_PCMFLOAT) static const Int
    reverb_eax2 : extern(FMOD_CAPS_REVERB_EAX2) static const Int
    reverb_eax3 : extern(FMOD_CAPS_REVERB_EAX3) static const Int
    reverb_eax4 : extern(FMOD_CAPS_REVERB_EAX4) static const Int
    reverb_eax5 : extern(FMOD_CAPS_REVERB_EAX5) static const Int
    reverb_i3dl2 : extern(FMOD_CAPS_REVERB_I3DL2) static const Int
    reverb_limited : extern(FMOD_CAPS_REVERB_LIMITED) static const Int
}

Debug : class {
    level_none : extern(FMOD_DEBUG_LEVEL_NONE) static const Int
    level_log : extern(FMOD_DEBUG_LEVEL_LOG) static const Int
    level_error : extern(FMOD_DEBUG_LEVEL_ERROR) static const Int
    level_warning : extern(FMOD_DEBUG_LEVEL_WARNING) static const Int
    level_hint : extern(FMOD_DEBUG_LEVEL_HINT) static const Int
    level_all : extern(FMOD_DEBUG_LEVEL_ALL) static const Int
    type_memory : extern(FMOD_DEBUG_TYPE_MEMORY) static const Int
    type_thread : extern(FMOD_DEBUG_TYPE_THREAD) static const Int
    type_file : extern(FMOD_DEBUG_TYPE_FILE) static const Int
    type_net : extern(FMOD_DEBUG_TYPE_NET) static const Int
    type_event : extern(FMOD_DEBUG_TYPE_EVENT) static const Int
    type_all : extern(FMOD_DEBUG_TYPE_ALL) static const Int
    display_timestamps : extern(FMOD_DEBUG_DISPLAY_TIMESTAMPS) static const Int
    display_linenumbers : extern(FMOD_DEBUG_DISPLAY_LINENUMBERS) static const Int
    display_compress : extern(FMOD_DEBUG_DISPLAY_COMPRESS) static const Int
    display_thread : extern(FMOD_DEBUG_DISPLAY_THREAD) static const Int
    display_all : extern(FMOD_DEBUG_DISPLAY_ALL) static const Int
    all : extern(FMOD_DEBUG_ALL) static const Int
}

Memory : class {
    normal : extern(FMOD_MEMORY_NORMAL) static const Int
    stream_file : extern(FMOD_MEMORY_STREAM_FILE) static const Int
    stream_decode : extern(FMOD_MEMORY_STREAM_DECODE) static const Int
    sampledata : extern(FMOD_MEMORY_SAMPLEDATA) static const Int
    dsp_outputbuffer : extern(FMOD_MEMORY_DSP_OUTPUTBUFFER) static const Int
    xbox360_physical : extern(FMOD_MEMORY_XBOX360_PHYSICAL) static const Int
    persistent : extern(FMOD_MEMORY_PERSISTENT) static const Int
    secondary : extern(FMOD_MEMORY_SECONDARY) static const Int
    all : extern(FMOD_MEMORY_ALL) static const Int
}

SpeakerMode : enum {
    raw,
    mono,
    stereo,
    quad,
    surround,
    _5point1,
    _7point1,
    prologic,
    max,
    forceint = 65536
}

Speaker : enum {
    front_left,
    front_right,
    front_center,
    low_frequency,
    back_left,
    back_right,
    side_left,
    side_right,
    max,
    mono = 0,
    _null = 8,
    sbl = 6,
    sbr = 7,
    forceint = 65536
}

PluginType : enum {
    output,
    codec,
    dsp,
    max,
    forceint = 65536
}

SoundType : enum {
    unknown,
    aac,
    aiff,
    asf,
    at3,
    cdda,
    dls,
    flac,
    fsb,
    gcadpcm,
    it,
    midi,
    mod,
    mpeg,
    oggvorbis,
    playlist,
    raw,
    s3m,
    sf2,
    user,
    wav,
    xm,
    xma,
    vag,
    audioqueue,
    xwma,
    bcwav,
    max,
    forceint = 65536
}

SoundFormat : enum {
    none,
    pcm8,
    pcm16,
    pcm24,
    pcm32,
    pcmfloat,
    gcadpcm,
    immaadpcm,
    vag,
    xma,
    mpeg,
    celt,
    max,
    forceint = 65536
}

Mode : class {
    default : extern(FMOD_DEFAULT) static const Int
    loop_off : extern(FMOD_LOOP_OFF) static const Int
    loop_normal : extern(FMOD_LOOP_NORMAL) static const Int
    loop_bidi : extern(FMOD_LOOP_BIDI) static const Int
    _2D : extern(FMOD_2D) static const Int
    _3D : extern(FMOD_3D) static const Int
    hardware : extern(FMOD_HARDWARE) static const Int
    software : extern(FMOD_SOFTWARE) static const Int
    createsample : extern(FMOD_CREATESAMPLE) static const Int
    createcompressedsample : extern(FMOD_CREATECOMPRESSEDSAMPLE) static const Int
    openuser : extern(FMOD_OPENUSER) static const Int
    openmemory : extern(FMOD_OPENMEMORY) static const Int
    openmemory_point : extern(FMOD_OPENMEMORY_POINT) static const Int
    openraw : extern(FMOD_OPENRAW) static const Int
    openonly : extern(FMOD_OPENONLY) static const Int
    accuratetime : extern(FMOD_ACCURATETIME) static const Int
    mpegsearch : extern(FMOD_MPEGSEARCH) static const Int
    nonblocking : extern(FMOD_NONBLOCKING) static const Int
    unique : extern(FMOD_UNIQUE) static const Int
    _3D_headrelative : extern(FMOD_3D_HEADRELATIVE) static const Int
    _3D_worldrelative : extern(FMOD_3D_WORLDRELATIVE) static const Int
    _3D_inverserolloff : extern(FMOD_3D_INVERSEROLLOFF) static const Int
    _3D_linearrolloff : extern(FMOD_3D_LINEARROLLOFF) static const Int
    _3D_customrolloff : extern(FMOD_3D_CUSTOMROLLOFF) static const Int
    _3D_ignoregeometry : extern(FMOD_3D_IGNOREGEOMETRY) static const Int
    unicode : extern(FMOD_UNICODE) static const Int
    ignoretags : extern(FMOD_IGNORETAGS) static const Int
    loadsecondaryram : extern(FMOD_LOADSECONDARYRAM) static const Int
    virtual_playfromstart : extern(FMOD_VIRTUAL_PLAYFROMSTART) static const Int
}

OpenState : enum {
    ready,
    loading,
    error,
    connecting,
    buffering,
    seeking,
    playing,
    setposition,
    max,
    forceint = 65536
}

SoundGroupBehavior : enum {
    fail,
    mute,
    steallowest,
    max,
    forceint = 65536
}

ChannelCallbackType : enum {
    end,
    virtualvoice,
    syncpoint,
    occlusion,
    max,
    forceint = 65536
}

SystemCallbackType : enum {
    devicelistchanged,
    devicelost,
    memoryallocationfailed,
    threadcreated,
    baddspconnection,
    baddsplevel,
    max,
    forceint = 65536
}

DspFftWindow : enum {
    rect,
    triangle,
    hamming,
    hanning,
    blackman,
    blackmanharris,
    max,
    forceint = 65536
}

DspResampler : enum {
    nointerp,
    linear,
    cubic,
    spline,
    max,
    forceint = 65536
}

TagType : enum {
    unknown,
    id3v1,
    id3v2,
    vorbiscomment,
    shoutcast,
    icecast,
    asf,
    midi,
    playlist,
    fmod,
    user,
    max,
    forceint = 65536
}

TagDataType : enum {
    binary,
    _int,
    _float,
    string,
    string_utf16,
    string_utf16be,
    string_utf8,
    cdtoc,
    max,
    forceint = 65536
}

DelayType : enum {
    end_ms,
    dsplock_start,
    dsplock_end,
    dsplock_pause,
    max,
    forceint = 65536
}

Tag : cover from FMOD_TAG* {
    type : extern Int
    datatype : extern Int
    name : extern CString
    data : extern Pointer
    datalen : extern UInt
    updated : extern Bool
}

TimeUnit : class {
    ms : extern(FMOD_TIMEUNIT_MS) static const Int
    pcm : extern(FMOD_TIMEUNIT_PCM) static const Int
    pcmbytes : extern(FMOD_TIMEUNIT_PCMBYTES) static const Int
    rawbytes : extern(FMOD_TIMEUNIT_RAWBYTES) static const Int
    pcmfraction : extern(FMOD_TIMEUNIT_PCMFRACTION) static const Int
    modorder : extern(FMOD_TIMEUNIT_MODORDER) static const Int
    modrow : extern(FMOD_TIMEUNIT_MODROW) static const Int
    modpattern : extern(FMOD_TIMEUNIT_MODPATTERN) static const Int
    sentence_ms : extern(FMOD_TIMEUNIT_SENTENCE_MS) static const Int
    sentence_pcm : extern(FMOD_TIMEUNIT_SENTENCE_PCM) static const Int
    sentence_pcmbytes : extern(FMOD_TIMEUNIT_SENTENCE_PCMBYTES) static const Int
    sentence : extern(FMOD_TIMEUNIT_SENTENCE) static const Int
    sentence_subsound : extern(FMOD_TIMEUNIT_SENTENCE_SUBSOUND) static const Int
    buffered : extern(FMOD_TIMEUNIT_BUFFERED) static const Int
}

SpeakerMapType : enum {
    _default,
    allmono,
    allstereo,
    _51_protools
}

CreateSoundExInfo : cover from FMOD_CREATESOUNDEXINFO* {
    cbsize : extern Int
    length : extern UInt
    fileoffset : extern UInt
    numchannels : extern Int
    defaultfrequency : extern Int
    format : extern Int
    decodebuffersize : extern UInt
    initialsubsound : extern Int
    numsubsounds : extern Int
    inclusionlist : extern Int[]
    inclusionlistnum : extern Int
    pcmsetposcallback : extern Func(Sound,Pointer,UInt)->Int
    nonblockcallback : extern Func(Sound,Int)->Int
    dlsname : extern CString
    encryptionkey : extern CString
    maxpolyphony : extern Int
    userdata : extern Pointer
    suggestedsoundtype : extern Int
    useropen : extern Func(CString,Int,UInt*,Pointer*,Pointer*)->Int
    userclose : extern Func(Pointer,Pointer)->Int
    userread : extern Func(Pointer,Pointer,UInt,UInt,Pointer)->Int
    userseek : extern Func(Pointer,UInt,Pointer)->Int
    userasyncread : extern Func(AsyncReadInfo,Pointer)->Int
    userasynccancel : extern Func(Pointer,Pointer)->Int
    speakermap : extern Int
    initialsoundgroup : extern SoundGroup
    initialseekposition : extern UInt
    initialseekpostype : extern Int
    ignoreserfilesystem : extern Int
    cddaforceaspi : extern Int
    audioqueuepolicy : extern UInt
    minmidigranularity : extern UInt
}

ReverbProperties : cover from FMOD_REVERB_PROPERTIES* {
    Instance : extern Int
    Environment : extern Int
    EnvSize : extern Float
    EnvDiffusion : extern Float
    Room : extern Int
    RoomHF : extern Int
    RoomLF : extern Int
    DecayTime : extern Float
    DecayHFRatio : extern Float
    DecayLFRatio : extern Float
    Reflection : extern Int
    ReflectionsDelay : extern Float
    ReflectionsPan : extern Float[]
    Reverb : extern Int
    ReverbDelay : extern Float
    ReverbPan : extern Float[]
    EchoTime : extern Float
    EchoDepth : extern Float
    ModulationTime : extern Float
    ModulationDepth : extern Float
    AirAbsorptionHF : extern Float
    HFReference : Float
    LFReference : Float
    RoomRolloffFactor : extern Float
    Diffusion : extern Float
    Density : extern Float
    Flags : extern UInt
}

ReverbFlags : class {
    decatimescale : extern(FMOD_REVERB_FLAGS_DECAYTIMESCALE) static const Int
    reflectionsscale : extern(FMOD_REVERB_FLAGS_REFLECTIONSSCALE) static const Int
    reflectionsdelayscale : extern(FMOD_REVERB_FLAGS_REFLECTIONSDELAYSCALE) static const Int
    reverbscale : extern(FMOD_REVERB_FLAGS_REVERBSCALE) static const Int
    reverbdelayscale : extern(FMOD_REVERB_FLAGS_REVERBDELAYSCALE) static const Int
    decayhflimit : extern(FMOD_REVERB_FLAGS_DECAYHFLIMIT) static const Int
    echotimescale : extern(FMOD_REVERB_FLAGS_ECHOTIMESCLAE) static const Int
    modulationtimescale : extern(FMOD_REVERB_FLAGS_MODULATIONTIMESCALE) static const Int
    core0 : extern(FMOD_REVERB_FLAGS_CORE0) static const Int
    core1 : extern(FMOD_REVERB_FLAGS_CORE1) static const Int
    highqualityreverb : extern(FMOD_REVERB_FLAGS_HIGHQUALITYREVERB) static const Int
    highqualitydpl2reverb : extern(FMOD_REVERB_FLAGS_HIGHQUALITYDPL2REVERB) static const Int
    default : extern(FMOD_REVERB_FLAGS_DEFAULT) static const Int
    
}

ReverbChannelProperties : cover from FMOD_REVERB_CHANNELPROPERTIES* {
    Direct : extern Int
    DirectHF : extern Int
    Room : extern Int
    RoomHF : extern Int
    Obstruction : extern Int
    ObstructionLFRation : extern Float
    Occlusion : extern Int
    OcclusionLFRation : extern Float
    OcclusionRoomRation : extern Float
    OcclusionDirectRation : extern Float
    Exclusion : extern Int
    ExclusionLFRation : extern Float
    OutsideVolumeHF : extern Int
    DopplerFactor : extern Float
    RolloffFactor : extern Float
    RoomRolloffFactor : extern Float
    AirAbsorptionFactor : extern Float
    Flags : extern UInt
    ConnectionPoint : extern Dsp
}

Dsp : cover from FMOD_DSP* {
    // Fill this
}

SyncPoint : cover from FMOD_SYNCPOINT*

SoundGroup : cover from FMOD_SOUNDGROUP* {
    release : extern(FMOD_SoundGroup_Release) func->Int
    getSystemObject : extern(FMOD_SoundGroup_GetSystemObject) func ~withRef(System@)->Int
    getSystemObject : func ~justReturnIt -> System {
        obj : System
        getSystemObject(obj&)
        obj
    }
    
    setMaxAudible : extern(FMOD_SoundGroup_SetMaxAudible) func(Int)->Int
    getMaxAudible : extern(FMOD_SoundGroup_GetMaxAudible) func~withRef(Int@)->Int
    getMaxAudible : func~justReturnIt -> Int {
        m : Int
        getMaxAudible(m&)
        m
    }
    
    maxAudible : Int {
        get {
            getMaxAudible()
        }
        set (m) {
            setMaxAudible(m)
        }
    }
    
    setMaxAudibleBehavior : extern(FMOD_SoundGroup_SetMaxAudibleBehavior) func(Int)->Int
    getMaxAudibleBehavior : extern(FMOD_SoundGroup_GetMaxAudibleBehavior) func~withRef(Int@)->Int
    getMaxAudibleBehavior : func ~justReturnIt -> Int {
        i : Int
        getMaxAudibleBehavior(i&)
        i
    }
    
    maxAudibleBehavior : Int {
        get {
            getMaxAudibleBehavior()
        }
        set (i) {
            setMaxAudibleBehavior(i)
        }
    }
    
    setMuteFadeSpeed : extern(FMOD_SoundGroup_SetMuteFadeSpeed) func(Float)->Int
    getMuteFadeSpeed : extern(FMOD_SoundGroup_GetMuteFadeSpeed) func~withRef(Float@)->Int
    getMuteFadeSpeed : func~justReturnIt -> Float {
        f : Float
        getMuteFadeSpeed(f&)
        f
    }
    
    muteFadeSpeed : Float {
        get {
            getMuteFadeSpeed()
        }
        set (f) {
            setMuteFadeSpeed(f)
        }
    }
    
    setVolume : extern(FMOD_SoundGroup_SetVolume) func(Float)->Int
    getVolume : extern(FMOD_SoundGroup_GetVolume) func~withRef(Float@)->Int
    getVolume : func~justReturnIt -> Float {
        f : Float
        getVolume(f&)
        f
    }
    
    volume : Float {
        get {
            getVolume()
        }
        set (f) {
            setVolume(f)
        }
    }
    
    stop : extern(FMOD_SoundGroup_Stop) func->Int
    getName : extern(FMOD_SoundGroup_GetName) func~withRef(CString,Int)->Int
    getName : func~justReturnItWithLength (len : Int)->CString {
        cstr : CString
        getName(cstr,len)
        cstr
    }
    getName : func~justReturnStringWithNoLength -> String {
        cstr : CString
        getName(cstr,1024)
        String new(cstr)
    }
    name : String {
        get {
            getName()
        }
    }
    getNumSounds : extern(FMOD_SoundGroup_GetNumSounds) func~withRef(Int@)->Int
    getNumSounds : func~justReturnIt -> Int {
        i : Int
        getNumSounds(i&)
        i
    }
    
    numSounds : Int {
        get {
            getNumSounds()
        }
    }
    getSound : extern(FMOD_SoundGroup_GetSound) func~withRef(Int,Sound@)->Int
    getSound : func~justReturnIt (index : Int)->Sound {
        s : Sound
        getSound(index,s&)
        s
    }
    
    getNumPlaying : extern(FMOD_SoundGroup_GetNumPlaying) func ~withRef(Int@)->Int
    getNumPlaying : func~justReturnIt -> Int {
        i : Int
        getNumPlaying(i&)
        i
    }
    
    numPlaying : Int {
        get {
            getNumPlaying()
        }
    }
    
    setUserData : extern(FMOD_SoundGroup_SetUserData) func(Pointer)->Int
    getUserData : extern(FMOD_SoundGroup_GetUserData) func~withRef(Pointer@)->Int
    getUserData : func~justReturnIt -> Pointer {
        p : Pointer
        getUserData(p&)
        p
    }
    
    
    userData : Pointer {
        get {
            getUserData()
        }
        set (p) {
            setUserData(p)
        }
    }
    
    getMemoryInfo : extern(FMOD_SoundGroup_GetMemoryInfo) func ~withRef(UInt,UInt,UInt@,MemoryUsageDetails)
    getMemoryInfo : func ~tuple (ui1,ui2 : UInt) -> (UInt,MemoryUsageDetails) {
        ui : UInt
        mem : MemoryUsageDetails
        getMemoryInfo(ui1,ui2,ui&,mem)
        (ui,mem)
    }
}

Sound : cover from FMOD_SOUND* {
    release : extern(FMOD_Sound_Release) func->Int
    getSystemObject : extern(FMOD_Sound_GetSystemObject) func ~withRef(System@)->Int
    getSystemObject : func ~justReturnIt -> System {
        sys : System
        getSystemObject(sys&)
        sys
    }
    lock : extern(FMOD_Sound_Lock) func ~tihRef(UInt,UInt,Pointer@,Pointer@,UInt@,UInt@)->Int
    lock : func ~tuple (a,b : UInt) -> (Pointer,Pointer,UInt,UInt) {
        ui1,ui2 : UInt
        p1,p2 : Pointer
        lock(a,b,p1&,p2&,ui1&,ui2&)
        (p1,p2,ui1,ui2)
    }
    unlock : extern(FMOD_Sound_Unlock) func(Pointer,Pointer,UInt,UInt)->Int
    setDefaults : extern(FMOD_Sound_SetDefaults) func(Float,Float,Float,Int)->Int
    getDefaults : extern(FMOD_Sound_GetDefaults) func ~withRef(Float@,Float@,Float@,Int@)->Int
    getDefaults : func ~tuple -> (Float,Float,Float,Int) {
        f1, f2, f3 : Float
        i1 : Int
        getDefaults(f1&,f2&,f3&,i1&)
        (f1,f2,f3,i1)
    }
    setVariations : extern(FMOD_Sound_SetVariations) func(Float,Float,Float)->Int
    getVariations : extern(FMOD_Sound_GetVariations) func ~withRef(Float@,Float@,Float@)->Int
    getVariations : func ~tuple -> (Float,Float,Float) {
        f1,f2,f3 : Float
        getVariations(f1&,f2&,f3&)
        (f1,f2,f3)
    }
    set3DMinMaxDistance : extern(FMOD_Sound_Set2DMinMaxDistance) func(Float,Float)->Int
    get3DMinMaxDistance : extern(FMOD_Sound_Get3DMinMaxDistance) func ~withRef(Float@,Float@)->Int
    get3DMinMaxDistance : func ~tuple -> (Float,Float) {
        f1,f2 : Float
        get3DMinMaxDistance(f1&,f2&)
        (f1,f2)
    }
    set3DConeSettings : extern(FMOD_Sound_Set3DConeSettings) func(Float,Float,Float)->Int
    get3DConeSettings : extern(FMOD_Sound_Get3DConeSettings) func ~withRef(Float@,Float@,Float@)->Int
    get3DConeSettings : func ~tuple -> (Float,Float,Float) {
        f1,f2,f3 : Float
        get3DConeSettings(f1&,f2&,f3&)
        (f1,f2,f3)
    }
    set3DCustomRolloff : extern(FMOD_Sound_Set3DCustomRolloff) func(Vector,Int)->Int
    get3DCustomRolloff : extern(FMOD_Sound_Get3DCustomRolloff) func ~withRef(Vector@,Int@)->Int
    get3DCustomRolloff : func ~tuple -> (Vector,Int) {
        v1 : Vector
        i1 : Int
        get3DCustomRolloff(v1&,i1&)
        (v1,i1)
    }
    setSubSound : extern(FMOD_Sound_SetSubSound) func(Int,Sound)->Int
    getSubSound : extern(FMOD_Sound_GetSubSound) func ~withRef(Int,Sound@)->Int
    getSubSound : func ~justReturnIt (i : Int) -> Sound {
        s1 : Sound
        getSubSound(i,s1&)
        s1
    }
    setSubSoundSentence : extern(FMOD_Sound_SetSubSoundSentence) func(Int[],Int)->Int
    getName : extern(FMOD_Sound_GetName) func(CString,Int)->Int
    getLength : extern(FMOD_Sound_GetLength) func ~withRef(UInt@,Int)->Int
    getLength : func ~justReturnIt (type : Int) -> UInt {
        ui1 : UInt
        getLength(ui1&,type)
        ui1
    }
    getFormat : extern(FMOD_Sound_GetFormat) func ~withRef(Int@,Int@,Int@,Int@)->Int
    getFormat : func ~tuple -> (Int,Int,Int,Int) {
        i1,i2,i3,i4 : Int
        getFormat(i1&,i2&,i3&,i4&)
        (i1,i2,i3,i4)
    }
    getNumSubSounds : extern(FMOD_Sound_GetNumSubSounds) func ~withRef(Int@)->Int
    getNumSubSounds : func ~justReturnIt -> Int {
        i1 : Int
        getNumSubSounds(i1&)
        i1
    }
    getNumTags : extern(FMOD_Sound_GetNumTags) func ~withRef(Int@,Int@)->Int
    getNumTags : func ~tuple -> (Int,Int) {
        i1,i2 : Int
        getNumTags(i1&,i2&)
        (i1,i2)
    }
    getTag : extern(FMOD_Sound_GetTag) func ~passedAsRef (CString,Int,Tag)->Int
    getTag : func ~returned (str : CString, i : Int) -> Tag {
        t : Tag
        getTag(str,i,t)
        t
    }
    getOpenState : extern(FMOD_Sound_GetOpenState) func ~withRef (Int@,UInt@,Bool@,Bool@)->Int
    getOpenState : func ~tuple -> (Int,UInt,Bool,Bool) {
        i1 : Int
        ui1 : UInt
        b1,b2 : Bool
        getOpenState(i1&,ui1&,b1&,b2&)
        (i1,ui1,b1,b2)
    }
    readData : extern(FMOD_Sound_ReadData) func ~withRef (Pointer,UInt,UInt@)->Int
    readData : func ~withBufferReturnsRead (p : Pointer,ui : UInt) -> UInt {
        ui1 : UInt
        readData(p,ui,ui1&)
        ui1
    }
    readData : func ~justLengthToReadAndReturnsString (length : UInt) -> String {
        buffer := gc_malloc(length)
        readData(buffer,length)
        String new(buffer as CString)
    }
    readData : func ~justStringReturned -> String {
        readData(1024)
    }
    
    seekData : extern(FMOD_Sound_SeekData) func(UInt)->Int
    setSoundGroup : extern(FMOD_Sound_SetSoundGroup) func(SoundGroup)->Int
    getSoundGroup : extern(FMOD_Sound_GetSoundGroup) func ~withRef (SoundGroup@)->Int
    getSoundGroup : func ~justReturnIt -> SoundGroup {
        sg : SoundGroup
        getSoundGroup(sg&)
        sg
    }
    
    soundGroup : SoundGroup {
        get {
            getSoundGroup()
        }
        set (s) {
            setSoundGroup(s)
        }
    }
    
    getNumSyncPoints : extern(FMOD_Sound_GetNumSyncPoints) func ~withRef (Int@)->Int
    getNumSyncPoints : func ~justReturnIt -> Int {
        i1 : Int
        getNumSyncPoints(i1&)
        i1
    }
    numSyncPoints : Int {
        get {
            getNumSyncPoints()
        }
    }
    
    getSyncPoint : extern(FMOD_Sound_GetSyncPoint) func ~withRef(Int,SyncPoint@)->Int
    getSyncPoint : func ~justReturnIt (index : Int) -> SyncPoint {
        sp : SyncPoint
        getSyncPoint(index,sp&)
        sp
    }
    getSyncPointInfo : extern(FMOD_Sound_GetSyncPointInfo) func ~withRef(SyncPoint,CString,Int,UInt@,Int)->Int
    getSyncPointInfo : func ~tuple (sp : SyncPoint,namelen : Int,offType : Int) -> (CString,UInt) {
        cstr : CString
        ui : UInt
        getSyncPointInfo(sp,cstr,namelen,ui&,offType)
        (cstr,ui)
    }
    
    addSyncPoint : extern(FMOD_Sound_AddSyncPoint) func ~withRef(UInt,Int,CString,SyncPoint@)->Int 
    addSyncPoint : func ~justReturnIt (ui : UInt, i : Int, cstr : CString)->SyncPoint {
        sp : SyncPoint
        addSyncPoint(ui,i,cstr,sp&)
        sp    
    }
    deleteSyncPoint : extern(FMOD_Sound_DeleteSyncPoint) func(SyncPoint)->Int
    setMode : extern(FMOD_Sound_SetMode) func(Int)->Int
    getMode : extern(FMOD_Sound_GetMode) func~withRef(Int@)->Int
    getMode : func ~justReturnIt -> Int {
        i1 : Int
        getMode(i1&)
        i1
    }
    
    mode : Int {
        get {
            getMode()
        }
        set (m) {
            setMode(m)
        }
    }
    
    setLoopCount : extern(FMOD_Sound_SetLoopCount) func(Int)->Int
    getLoopCount : extern(FMOD_Sound_GetLoopCount) func~withRef(Int@)->Int
    getLoopCount : func~justReturnIt -> Int {
        i : Int
        getLoopCount(i&)
        i
    }
    
    loopCount : Int {
        get {
            getLoopCount()
        }
        set (lc) {
            setLoopCount(lc)
        }
    }
    
    setLoopPoints : extern(FMOD_Sound_SetLoopPoints) func(UInt,Int,UInt,Int)->Int
    getLoopPoints : extern(FMOD_Sound_GetLoopPoints) func ~withRef(UInt@,Int,UInt@,Int)->Int
    getLoopPoints : func ~tuple (i1,i2 : Int) -> (UInt,UInt) {
        ui1, ui2 : UInt
        getLoopPoints(ui1&,i1,ui2&,i2)
        (ui1,ui2)
    }
    
    getMusicNumChannels : extern(FMOD_Sound_GetMusicNumChannels) func~withRef (Int@)->Int
    getMusicNumChannels : func ~justReturnIt -> Int {
        i : Int
        getMusicNumChannels(i&)
        i
    }
    musicNumChannels : Int {
        get {
            getMusicNumChannels()
        }
    }
    
    setMusicChannelVolume : extern(FMOD_Sound_SetMusicChannelVolume) func(Int,Float)->Int
    getMusicChannelVolume : extern(FMOD_Sound_GetMusicChannelVolume) func ~withRef(Int,Float@)->Int
    getMusicChannelVolume : func ~justReturnIt (index : Int) -> Float {
        f : Float
        getMusicChannelVolume(index,f&)
        f
    }
    
    setMusicSpeed : extern(FMOD_Sound_SetMusicSpeed) func(Float)->Int
    getMusicSpeed : extern(FMOD_Sound_GetMusicSpeed) func ~withRef(Float@)->Int
    getMusicSpeed : func ~justReturnIt -> Float {
        f : Float
        getMusicSpeed(f&)
        f
    }
    
    musicSpeed : Float {
        get {
            getMusicSpeed()
        }
        set (s) {
            setMusicSpeed(s)
        }
    }
    
    setUserData : extern(FMOD_Sound_SetUserData) func(Pointer)->Int
    getUserData : extern(FMOD_Sound_GetUserData) func~wiithRef (Pointer@)->Int
    getUserData : func ~justReturnIt -> Pointer {
        p : Pointer
        getUserData(p&)
        p
    }
    
    userData : Pointer {
        get {
            getUserData()
        }
        set (p) {
            setUserData(p)
        }
    }
    
    getMemoryInfo : extern(FMOD_Sound_GetMemoryInfo) func ~withRef(UInt,UInt,UInt@,MemoryUsageDetails)
    getMemoryInfo : func ~tuple (ui1,ui2 : UInt) -> (UInt,MemoryUsageDetails) {
        ui : UInt
        mem : MemoryUsageDetails
        getMemoryInfo(ui1,ui2,ui&,mem)
        (ui,mem)
    }
}

MemoryUsageDetails : cover from FMOD_MEMORY_USAGE_DETAILS* {
    other : extern UInt
    string : extern UInt
    system : extern UInt
    plugins : extern UInt
    output : extern UInt
    channel : extern UInt
    channelgroup : extern UInt
    codec : extern UInt
    file : extern UInt
    sound : extern UInt
    secondaryram : extern UInt
    soundgroup : extern UInt
    streambuffer : extern UInt
    dspconnection : extern UInt
    dsp : extern UInt
    sdpcodec : extern UInt
    profile : extern UInt
    recordbuffer : extern UInt
    reverb : extern UInt
    reverbchannelprops : extern UInt
    geometry : extern UInt
    syncpoint : extern UInt
    eventsystem : extern UInt
    musicsystem : extern UInt
    fev : extern UInt
    memoryfsb : extern UInt
    eventproject : extern UInt
    eventgroupi : extern UInt
    soundbankclass : extern UInt
    soundbanklist : extern UInt
    streaminstance : extern UInt
    sounddefclass : extern UInt
    sounddefdefclass : extern UInt
    sounddefpool : extern UInt
    reverbdef : extern UInt
    eventreverb : extern UInt
    userproperty : extern UInt
    eventinstance : extern UInt
    eventinstance_complex : extern UInt
    eventinstance_simple : extern UInt
    eventinstance_layer : extern UInt
    eventinstance_sound : extern UInt
    eventenvelope : extern UInt
    eventenvelopedef : extern UInt
    eventparameter : extern UInt
    eventcategory : extern UInt
    eventenvelopepoint : extern UInt
    eventinstancepool : extern UInt
}


_system_create : extern(FMOD_System_Create) func(System@) -> Int
System : cover from FMOD_SYSTEM* {
    new : static func -> This {
        obj : This
        _system_create(obj&)
        return obj
    }
    
    init : extern(FMOD_System_Init) func(Int,UInt,Pointer)
    close : extern(FMOD_System_Close) func->Int
    release : extern(FMOD_System_Release) func->Int
    
    
    clean : func {
        this close(). release()
    }
}
